package com.bitcamp.pick.controller;

import java.awt.image.BufferedImage;
import java.io.File;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.bitcamp.pick.domain.Choice;
import com.bitcamp.pick.domain.Interest;
import com.bitcamp.pick.domain.User;
import com.bitcamp.pick.domain.Vote;
import com.bitcamp.pick.domain.VoteAuthority;
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
	public @ResponseBody Vote addVote(@ModelAttribute("vote") Vote vote,
			MultipartHttpServletRequest multipartHttpServletRequest, Model model, HttpSession session,
			@ModelAttribute VoteAuthority voteA​uthority) throws Exception {
		System.out.println("addVote-POST");

		vote.setVoteAuthority(voteA​uthority);
		vote.setUserNo(((User) session.getAttribute("user")).getUserNo());
		voteService.addVote(vote);
		System.out.println("Vote Information :" + vote);
		System.out.println("Vote A​uthority :" + voteA​uthority);
		/* VERSUS */
		if (vote.getVoteType().equals("VERSUS")) {
			System.out.println("Vote Type is VERSUS");
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
			Thumbnails.of(originalLeftFile).crop(Positions.CENTER).size(160, 160).imageType(BufferedImage.TYPE_INT_ARGB).toFile(thumbnaiLeftlFile);
			leftChoice.setPhoto(leftRandomPhotoName);

			String rightRandomPhotoName = UUID.randomUUID().toString().replace("-", "")
					+ rightPhoto.getOriginalFilename().toLowerCase();
			File originalRightFile = new File(voteOriginalImageUploadPath, rightRandomPhotoName);
			File thumbnaiRightlFile = new File(voteThumbnailImageUploadPath, rightRandomPhotoName);

			rightPhoto.transferTo(originalRightFile);
			Thumbnails.of(originalRightFile).crop(Positions.CENTER).size(160, 160).imageType(BufferedImage.TYPE_INT_ARGB).toFile(thumbnaiRightlFile);
			rightChoice.setPhoto(rightRandomPhotoName);

			System.out.println("left choice info :" + leftChoice);
			System.out.println("right choice info:" + rightChoice);
			choiceService.addChoice(leftChoice);
			choiceService.addChoice(rightChoice);
			
		
			
		} else {/* MULTI */
			// 선택지 갯수
			System.out.println("Vote Type is MULTI");
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
				System.out.println("choice info " + i + ":" + choice);

			}

		}

		return vote;

	}

	@RequestMapping(value = "getVote/{voteNo}", method = RequestMethod.GET)
	public String getVote(@PathVariable("voteNo") int voteNo, Model model) throws Exception {

		Vote vote = voteService.getVote(voteNo);

		model.addAttribute("vote", vote);

		if (vote.getVoteType().equals("MULTI-CHOICE")) {
			return "forward:/pick/pickMulti.jsp";
		} else {
			return "forward:/pick/pickOne.jsp";
		}

	}
	
	@RequestMapping(value="voteVersus", method=RequestMethod.POST)
	public void voteVersus(@RequestParam int choiceNo,HttpSession session) throws Exception{
		System.out.println("voteVersus -POST");
		
		User user = (User)session.getAttribute("user");
		Choice dbChoice = choiceService.getChoiceByChoiceNo(choiceNo);
		
		int choiceCount = dbChoice.getChoiceCount();
		
		choiceCount++;
		
		dbChoice.setChoiceCount(choiceCount);
		
		choiceService.updateChoiceCount(dbChoice,user.getUserNo());

	}
	
	@RequestMapping(value="voteMultiChoice",method=RequestMethod.POST)
	public void voteMultiChoice(@RequestParam("choiceNo") List<Integer> choiceNoList,HttpSession session) throws Exception{
		System.out.println("voteMultiChoice -POST");
		User user = (User)session.getAttribute("user");
		
		for(int choiceNo : choiceNoList){
			
			Choice dbChoice = choiceService.getChoiceByChoiceNo(choiceNo);
			int choiceCount = dbChoice.getChoiceCount();
			choiceCount++;
			dbChoice.setChoiceCount(choiceCount);
			choiceService.updateChoiceCount(dbChoice,user.getUserNo());
		
		}
	
	}

	

}
