package com.bitcamp.pick.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.bitcamp.pick.domain.Choice;
import com.bitcamp.pick.domain.Interest;
import com.bitcamp.pick.domain.User;
import com.bitcamp.pick.domain.Vote;
import com.bitcamp.pick.domain.VoteA​uthority;
import com.bitcamp.pick.service.ChoiceService;
import com.bitcamp.pick.service.InterestService;
import com.bitcamp.pick.service.VoteService;

import net.coobird.thumbnailator.Thumbnails;
import net.coobird.thumbnailator.geometry.Positions;

@Controller
@RequestMapping("/vote/*") //
public class VoteController {

	/// Field
	@Autowired
	@Qualifier("voteServiceImpl")
	private VoteService voteService;

	@Autowired
	@Qualifier("choiceServiceImpl")
	private ChoiceService choiceService;

	@Autowired
	@Qualifier("interestServiceImpl")
	private InterestService interestService;

	@Value("#{commonProperties['voteThumbnailImageUploadPath']}")
	String voteThumbnailImageUploadPath;

	@Value("#{commonProperties['voteOriginalImageUploadPath']}")
	String voteOriginalImageUploadPath;

	public VoteController() {
		System.out.println("VoteController Default Constructor");
	}

	/* 투표 등록 페이지 리턴 메소드 */
	@RequestMapping(value = "addVote", method = RequestMethod.GET)
	public String addVote(Model model) throws Exception {
		System.out.println("addVote-GET");

		List<Interest> interestList = interestService.getInterestList();

		model.addAttribute("interestList", interestList);

		return "forward:/voteRegistration/voteRegistration.jsp";
	}

	/* 투표 등록 */
	@RequestMapping(value = "addVote", method = RequestMethod.POST)
	public String addVote(@ModelAttribute("vote") Vote vote, MultipartHttpServletRequest multipartHttpServletRequest,
			Model model, HttpSession session, @ModelAttribute VoteA​uthority voteA​uthority) throws Exception {
		System.out.println("addVote-POST");

		vote.setVoteA​uthority(voteA​uthority);
		vote.setUserNo(((User) session.getAttribute("user")).getUserNo());
		voteService.addVote(vote);

		/* VERSUS */
		if (vote.getVoteType().equals("VERSUS")) {

			Choice leftChoice = new Choice();
			leftChoice.setVoteNo(vote.getVoteNo());
			leftChoice.setContent(multipartHttpServletRequest.getParameter("left_content"));

			Choice rightChoice = new Choice();
			rightChoice.setVoteNo(vote.getVoteNo());
			rightChoice.setContent(multipartHttpServletRequest.getParameter("right_content"));

			Map<String, MultipartFile> multiFileMap = multipartHttpServletRequest.getFileMap();

			MultipartFile leftPhoto = multiFileMap.get("left_photo");
			MultipartFile rightPhoto = multiFileMap.get("right_photo");

			
			
			
			
			
			String leftRandomPhotoName = UUID.randomUUID().toString().replace("-", "")
					+ leftPhoto.getOriginalFilename().toLowerCase();
			File originalLeftFile = new File(voteOriginalImageUploadPath, leftRandomPhotoName);
			File thumbnaiLeftlFile = new File(voteThumbnailImageUploadPath, leftRandomPhotoName);

			leftPhoto.transferTo(originalLeftFile);
			Thumbnails.of(originalLeftFile).crop(Positions.CENTER).size(100, 100).toFile(thumbnaiLeftlFile);
			leftChoice.setPhoto(leftRandomPhotoName);

			
			
			
			String rightRandomPhotoName = UUID.randomUUID().toString().replace("-", "")
					+ rightPhoto.getOriginalFilename().toLowerCase();
			File originalRightFile = new File(voteOriginalImageUploadPath, rightRandomPhotoName);
			File thumbnaiRightlFile = new File(voteThumbnailImageUploadPath, rightRandomPhotoName);

			rightPhoto.transferTo(originalRightFile);
			Thumbnails.of(originalRightFile).crop(Positions.CENTER).size(100, 100).toFile(thumbnaiRightlFile);
			rightChoice.setPhoto(rightRandomPhotoName);

			
			
			
			choiceService.addChoice(leftChoice);
			choiceService.addChoice(rightChoice);

		} else {/* MULTI */
			// 선택지 갯수

			int choiceCount = Integer.parseInt(multipartHttpServletRequest.getParameter("choiceCount"));
			Map<String, MultipartFile> map = multipartHttpServletRequest.getFileMap();

			Choice choice = null;
			String content = null;
			MultipartFile photo = null;
			String randomPhotoName = null;
			for (int i = 1; i <= choiceCount; i++) {

				choice = new Choice();
				choice.setVoteNo(vote.getVoteNo());

				content = multipartHttpServletRequest.getParameter("content" + i);
				choice.setContent(content);

				photo = map.get("photo" + i);

				randomPhotoName = UUID.randomUUID().toString().replace("-", "")
						+ photo.getOriginalFilename().toLowerCase();

				File originalFile = new File(voteOriginalImageUploadPath, randomPhotoName);
				File thumbnailFile = new File(voteThumbnailImageUploadPath, randomPhotoName);

				photo.transferTo(originalFile);
				Thumbnails.of(originalFile).crop(Positions.CENTER).size(100, 100).toFile(thumbnailFile);
				choice.setPhoto(randomPhotoName);

				choiceService.addChoice(choice);

			}

		}

		return "forward:/main/main.jsp";

	}

	@RequestMapping(value = "getVote", method = RequestMethod.GET)
	public String getVote(@RequestParam("voteNo") int voteNo, Model model) throws Exception {

		Vote vote = voteService.getVote(voteNo);
		System.out.println("db에서 온 vote객체 : " + vote);
		List<Choice> choiceList = choiceService.getChoiceList(voteNo);
		vote.setChoiceList(choiceList);
		System.out.println("choice 객체 셋팅 후  vote객체 : " + vote);
		System.out.println("vote에서 list만 뽑아내보자.. " + vote.getChoiceList());

		model.addAttribute("vote", vote);

		if (vote.getVoteType().equals("MULTI-CHOICE")) {

			return "forward:/pick/pickMulti.jsp";

		} else if (vote.getVoteType().equals("VERSUS")) {

			return "forward:/pick/pickOne.jsp";
		}

		return "forword:/pick/pickMulti.jsp";
	}

	@RequestMapping(value = "updateChoiceCnt", method = RequestMethod.POST)
	public String updateChoiceCnt(@RequestParam("choiceNo") List<Integer> choiceNo, Model model) throws Exception {

		System.out.println("updateChoiceCnt 시작.. 파라미터확인 : " + choiceNo);
		String voteType = voteService.getVote((choiceService.getChoiceByChoiceNo(choiceNo.get(0)).getVoteNo()))
				.getVoteType();
		System.out.println("voteType은 ? : " + voteType);
		for (int i = 0; i < choiceNo.size(); i++) {
			System.out.println((i + 1) + "번째 choiceNo : " + choiceNo.get(i));
			Choice choice = new Choice();
			choice = choiceService.getChoiceByChoiceNo(choiceNo.get(i));
			System.out.println("update실행전 " + (i + 1) + "번째 choice객체의 Count : " + choice.getChoiceCount());
			choice.setChoiceCount(choice.getChoiceCount() + 1);
			choiceService.updateChoiceCount(choice);
			System.out.println("update실행후 " + (i + 1) + "번째 choice객체의 Count : " + choice.getChoiceCount());
		}
		// 1 choiceNo 를 받아서 choice 도메인객체 가져오기 (getChoiceByChoiceNo)
		// --> multiSelect의 경우 여러 선택지가 있으니 여러개의 choiceNo 를 가져올 수 있도록 메소드의 파라미터를
		// List형태로 받는다.
		// 2 도메인객체의 choiceCnt(득표수)를 DB에서 get한 후 1을 더한 다음 upDate 쿼리를 실행한다.
		// (upDateChoiceCnt)
		// 3. 위의 과정을 List 의 size만큼 반복실행한다. (for문 이용)

		if (voteType.equals("VERSUS")) {

			return "forward:/result/result.html";

		} else if (voteType.equals("MULTI-CHOICE")) {

			return "forward:/result/result_multi.html";
		}

		return "forward:/result/result_multi.html";

	}

}
