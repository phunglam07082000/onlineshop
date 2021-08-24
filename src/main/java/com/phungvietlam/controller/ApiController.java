package com.phungvietlam.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.phungvietlam.dto.GioHang;
import com.phungvietlam.dto.Json_HoaDon;
import com.phungvietlam.dto.Json_SanPham;
import com.phungvietlam.entity.ChiTietHoaDon;
import com.phungvietlam.entity.ChiTietHoaDonId;
import com.phungvietlam.entity.ChiTietSanPham;
import com.phungvietlam.entity.ChucVu;
import com.phungvietlam.entity.DanhMucSanPham;
import com.phungvietlam.entity.HoaDon;
import com.phungvietlam.entity.MauSanPham;
import com.phungvietlam.entity.NhanVien;
import com.phungvietlam.entity.SanPham;
import com.phungvietlam.entity.SizeSanPham;
import com.phungvietlam.service.IChucVuService;
import com.phungvietlam.service.IHoaDonService;
import com.phungvietlam.service.INhanVienService;
import com.phungvietlam.service.ISanPhamService;

@Controller
@RequestMapping("api/")
@SessionAttributes({ "user", "giohang" })
public class ApiController {

	@Autowired
	private INhanVienService nhanVienService;

	@Autowired
	private ISanPhamService sanPhamService;
	
	@Autowired
	private IHoaDonService hoaDonService;
	
	  @GetMapping("kiemTraDangNhap")
	  
	  @ResponseBody 
	  public String kiemTraDangNhap(@RequestParam String
	  tendangnhap, @RequestParam String matkhau, ModelMap modelMap) {
	  
	  NhanVien nhanVien = nhanVienService.DangNhap(tendangnhap, matkhau);
	  
	  if(nhanVien!=null) {
		  modelMap.addAttribute("user", tendangnhap);
		  ChucVu chucVu=new ChucVu();
		  chucVu.setMachucvu(nhanVien.getChucvu().getMachucvu());
		  
		  if(chucVu.getMachucvu()==2) {
		  return "Admin";
		  }  
		  if(chucVu.getMachucvu()==1) {
			  
			  return "User";
		  }
			  
	  }
	   
	  return ""+nhanVien;
	  
	  
	  }
	  
	  
	  @PostMapping("capnhathoadon")
	  @ResponseBody
      public String CapNhatHoaDon(@RequestParam int mahoadon, @RequestParam boolean tinhtrang) {
		  
		    hoaDonService.capNhatHoaDon(mahoadon, tinhtrang);
		 
		  return "";
	  }
	 
	 
	 
	
	
	/*
	 * @GetMapping("kiemTraDangNhap")
	 * 
	 * @ResponseBody public String kiemTraDangNhap(@RequestParam String
	 * tendangnhap, @RequestParam String matkhau, ModelMap modelMap) {
	 * 
	 * 
	 * 
	 * boolean kiemtra = nhanVienService.dangNhap(tendangnhap, matkhau);
	 * modelMap.addAttribute("user", tendangnhap);
	 * 
	 * return "" + kiemtra;
	 * 
	 * }
	 */
	 
	 
	 

	@GetMapping("CapNhatGioHang")
	@ResponseBody
	public void CapNhatGioHang(HttpSession httpSession, @RequestParam int soluong, @RequestParam int masp,
			@RequestParam int mamau, @RequestParam int masize) {
		
		
		if (null != httpSession.getAttribute("giohang")) {

			List<GioHang> listGioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
			int vitri = ktSanPhamGioHang(listGioHangs, httpSession, masp, mamau, masize);

			listGioHangs.get(vitri).setSoluong(soluong);
		}

	}

	@GetMapping("XoaGioHang")
	@ResponseBody
	public void XoaGioHang(HttpSession httpSession, @RequestParam int masp, @RequestParam int mamau,
			@RequestParam int masize) {
		if (null != httpSession.getAttribute("giohang")) {

			List<GioHang> listGioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
			int vitri = ktSanPhamGioHang(listGioHangs, httpSession, masp, mamau, masize);

			listGioHangs.remove(vitri);
		}

	}

	@GetMapping("ThemGioHang")
	@ResponseBody
	public String ThemGioHang(@RequestParam int masp, @RequestParam int mamau, @RequestParam int masize,
			@RequestParam String tensp, @RequestParam String giatien, @RequestParam String tenmau,
			@RequestParam String tensize, @RequestParam int soluong, @RequestParam int machitiet,
			HttpSession httpSession) {

		if (null == httpSession.getAttribute("giohang")) {
			List<GioHang> giohangs = new ArrayList<GioHang>();
			GioHang gioHang = new GioHang();
			gioHang.setMasp(masp);
			gioHang.setMamau(mamau);
			gioHang.setMasize(masize);

			gioHang.setTensp(tensp);
			gioHang.setGiatien(giatien);
			gioHang.setTenmau(tenmau);
			gioHang.setTensize(tensize);
			gioHang.setSoluong(1);
			gioHang.setMachitiet(machitiet);

			giohangs.add(gioHang);
			httpSession.setAttribute("giohang", giohangs);
			return giohangs.size() + "";

		} else {
			List<GioHang> listGioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
			int vitri = ktSanPhamGioHang(listGioHangs, httpSession, masp, mamau, masize);
			if (vitri == -1) {

				GioHang gioHang = new GioHang();
				gioHang.setMasp(masp);
				gioHang.setMamau(mamau);
				gioHang.setMasize(masize);

				gioHang.setTensp(tensp);
				gioHang.setGiatien(giatien);
				gioHang.setTenmau(tenmau);
				gioHang.setTensize(tensize);
				gioHang.setSoluong(1);
				gioHang.setMachitiet(machitiet);

				listGioHangs.add(gioHang);
			} else {

				int soluonmoi = listGioHangs.get(vitri).getSoluong() + 1;
				listGioHangs.get(vitri).setSoluong(soluonmoi);

			}

			return listGioHangs.size() + "";

		}

	}

	private int ktSanPhamGioHang(List<GioHang> gioHangs, HttpSession httpSession, int masp, int mamau, int masize) {

		for (int i = 0; i < gioHangs.size(); i++) {
			if (gioHangs.get(i).getMasp() == masp && gioHangs.get(i).getMamau() == mamau
					&& gioHangs.get(i).getMasize() == masize) {

				return i;
			}
		}
		return -1;
	}

	/*
	 * @GetMapping("LaySoLuongGioHang")
	 * 
	 * @ResponseBody public String LaySoLuongGioHang(HttpSession httpSession) {
	 * 
	 * if(null != httpSession.getAttribute("giohang")) { List<GioHang> gioHangs
	 * =(List<GioHang>) httpSession.getAttribute("giohang"); return
	 * gioHangs.size()+"";
	 * 
	 * }
	 * 
	 * return ""; }
	 */

	@GetMapping("laysanphamlimit")
	@ResponseBody
	public String LaySanPhamLimit(@RequestParam int spbatdau) {

		String html = "";
		List<SanPham> listSanPhams = sanPhamService.layDanhSachSanPham(spbatdau);

		for (SanPham sanPham : listSanPhams) {
			html += "<tr>";
			html += "<td><div class='checkbox'><label><input type='checkbox' value='" + sanPham.getMasanpham()
					+ "'/></label></div></td>";

			html += "<td>" + sanPham.getTensanpham() + "</td>";
			html += "<td>" + sanPham.getGiatien() + "</td>";
			html += "<td><button class='capnhatsanpham dash__btn--update' data-id=" +sanPham.getMasanpham()+ ">update</button></td>";
			html += "</tr>";

		}
		System.out.println(html);

		return html;
	}
	
	
	@GetMapping("layhoadonlimit")
	@ResponseBody
	public String LayHoaDonlimit(@RequestParam int hdbatdau) {
		String html = "";
		  List<HoaDon>  listHoaDons=hoaDonService.layDanhSachHoaDon(hdbatdau);
		  
		  for (HoaDon hoaDon : listHoaDons) {
			
				html += "<tr>";
				html += "<td><div class='checkbox'><label><input type='checkbox' value='" + hoaDon.getMahoadon()
				+ "'/></label></div></td>";
				html += "<td>" + hoaDon.getMahoadon() + "</td>";
				html += "<td>" + hoaDon.getTenkhachhang() + "</td>";
				html += "<td>" + hoaDon.getSodt() + "</td>";
				html += "<td>" + hoaDon.getDiachigiaohang() + "</td>";
				
				html +=
				  "<td><select class='select' id='tinhtrang' name='tinhtrang'><option value='1'>Đã giao</option><option value='0'>Chưa giao</option></select></td>"
				  ;
				 
				html += "<td>" + hoaDon.getNgaylap() + "</td>";
				html += "<td>" + hoaDon.getHinhthucgiaohang() + "</td>";
				html += "<td>" + hoaDon.getGhichu() + "</td>";
				html += "<td><button class='capnhathoadon dash__btn--update' data-id=" +hoaDon.getMahoadon()+ ">update</button></td>";
				html += "</tr>";
			  
		}
		  System.out.println(html);
		return html;
	}

	@GetMapping("xoaSanPham")
	@ResponseBody
	public void Xoa(@RequestParam int masanpham) {
		sanPhamService.Xoa(masanpham);

	}

	@Autowired
	ServletContext context;

	@PostMapping("UpLoadFile")
	@ResponseBody
	public String UpLoadFile(MultipartHttpServletRequest request) {
		String path_save_file = context.getRealPath("/resources/Image/");
		Iterator<String> listNames = request.getFileNames();
		MultipartFile multipartFile = request.getFile(listNames.next());

		File file_save = new File(path_save_file + multipartFile.getOriginalFilename());
		try {
			multipartFile.transferTo(file_save);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		System.out.println(path_save_file);

		return "true";
	}

	@PostMapping("themsanpham")
	@ResponseBody
	
	public void themSanPham(@RequestParam String dataJson) {
		
		ObjectMapper objectMapper=new ObjectMapper();
		
		 try {
			 SanPham sanPham=new SanPham();
			 JsonNode jsonObject=objectMapper.readTree(dataJson);
			
			DanhMucSanPham danhMucSanPham= new DanhMucSanPham();
			danhMucSanPham.setMadanhmuc(jsonObject.get("danhmucsanpham").asInt());
			
			JsonNode jsonChiTiet=jsonObject.get("chitietsanpham");
			Set<ChiTietSanPham> listChiTiet=new HashSet<ChiTietSanPham>(); 
			for (JsonNode jsonNode : jsonChiTiet) {
				
				ChiTietSanPham chiTietSanPham=new ChiTietSanPham();
				
				
				MauSanPham mauSanPham=new MauSanPham();
				mauSanPham.setMamau(jsonNode.get("mausanpham").asInt());
				
				
				SizeSanPham sizeSanPham=new SizeSanPham();
				sizeSanPham.setMasize(jsonNode.get("sizesanpham").asInt());
				
				chiTietSanPham.setMausanpham(mauSanPham);
				chiTietSanPham.setSizesanpham(sizeSanPham);
				
				
				 chiTietSanPham.setSoluong(jsonNode.get("soluong").asInt());
				 chiTietSanPham.setNgaynhap(jsonNode.get("ngaynhap").asText());
				  
				
				
				
				listChiTiet.add(chiTietSanPham);
			}
			
			String tenSanPham=jsonObject.get("tensanpham").asText();
			String giaTien=jsonObject.get("giatien").asText();
			String moTa=jsonObject.get("mota").asText();
			String hinhSanPham=jsonObject.get("hinhsanpham").asText();
			
			sanPham.setChitietsanpham(listChiTiet);
			sanPham.setDanhmucsanpham(danhMucSanPham);
			
			sanPham.setTensanpham(tenSanPham);
			sanPham.setGiatien(giaTien);
			sanPham.setMota(moTa);
			sanPham.setHinhsanpham(hinhSanPham);
			
			sanPhamService.ThemSanPham(sanPham);
			
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 	
	}
	
	
	@PostMapping("capnhatsanpham")
	@ResponseBody	
	public void capNhatSanPham(@RequestParam String dataJson) {
		
		ObjectMapper objectMapper=new ObjectMapper();
		
		 try {
			 SanPham sanPham=new SanPham();
			 JsonNode jsonObject=objectMapper.readTree(dataJson);
			
			DanhMucSanPham danhMucSanPham= new DanhMucSanPham();
			danhMucSanPham.setMadanhmuc(jsonObject.get("danhmucsanpham").asInt());
			
			JsonNode jsonChiTiet=jsonObject.get("chitietsanpham");
			Set<ChiTietSanPham> listChiTiet=new HashSet<ChiTietSanPham>(); 
			for (JsonNode jsonNode : jsonChiTiet) {
				
				ChiTietSanPham chiTietSanPham=new ChiTietSanPham();
				
				
				MauSanPham mauSanPham=new MauSanPham();
				mauSanPham.setMamau(jsonNode.get("mausanpham").asInt());
				
				
				SizeSanPham sizeSanPham=new SizeSanPham();
				sizeSanPham.setMasize(jsonNode.get("sizesanpham").asInt());
				
				chiTietSanPham.setMausanpham(mauSanPham);
				chiTietSanPham.setSizesanpham(sizeSanPham);
			
			
		      chiTietSanPham.setSoluong(jsonNode.get("soluong").asInt());
			  chiTietSanPham.setNgaynhap(jsonNode.get("ngaynhap").asText());			 
				
				
				
				listChiTiet.add(chiTietSanPham);
			}
			
			String tenSanPham=jsonObject.get("tensanpham").asText();
			String giaTien=jsonObject.get("giatien").asText();
			String moTa=jsonObject.get("mota").asText();
			String hinhSanPham=jsonObject.get("hinhsanpham").asText();
			
			int masanpham=jsonObject.get("masanpham").asInt();
			
			
			sanPham.setMasanpham(masanpham);
			sanPham.setChitietsanpham(listChiTiet);
			sanPham.setDanhmucsanpham(danhMucSanPham);
			sanPham.setTensanpham(tenSanPham);
			sanPham.setGiatien(giaTien);
			sanPham.setMota(moTa);
			sanPham.setHinhsanpham(hinhSanPham);
			
			sanPhamService.CapNhatSanPham(sanPham);
			
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 	
	}
	
	@PostMapping(path = "LayDanhSachSanPhamTheoMa",produces = "application/json; charset=utf-8")
	@ResponseBody
	public Json_SanPham LayDanhSachSanPhamTheoMa(@RequestParam int masanpham){
		Json_SanPham json_SanPham=new Json_SanPham();
		
		SanPham sanPhams =sanPhamService.layChiTietSanPham(masanpham);
	
		 json_SanPham.setMasanpham(sanPhams.getMasanpham());
		 json_SanPham.setTensanpham(sanPhams.getTensanpham());
		 json_SanPham.setGiatien(sanPhams.getGiatien());
		 json_SanPham.setMota(sanPhams.getMota());
		 json_SanPham.setHinhsanpham(sanPhams.getHinhsanpham());
		 
		 DanhMucSanPham danhMucSanPham= new DanhMucSanPham();
		 danhMucSanPham.setMadanhmuc(sanPhams.getDanhmucsanpham().getMadanhmuc());
		 danhMucSanPham.setTendanhmuc(sanPhams.getDanhmucsanpham().getTendanhmuc());
		 
		 Set<ChiTietSanPham> chiTietSanPhams= new HashSet<ChiTietSanPham>();
		 
		 
		 for (ChiTietSanPham value : sanPhams.getChitietsanpham()) {
			 
			 ChiTietSanPham chiTietSanPham= new ChiTietSanPham();
			 
			 
			 chiTietSanPham.setMachitietsanpham(value.getMachitietsanpham());
			 
			 
			 MauSanPham mauSanPham= new MauSanPham();
			 mauSanPham.setMamau(value.getMausanpham().getMamau());
			 mauSanPham.setTenmau(value.getMausanpham().getTenmau());
			 
			 
			 chiTietSanPham.setMausanpham(mauSanPham);
			 
			 
			 SizeSanPham sizeSanPham=new SizeSanPham();
			 sizeSanPham.setMasize(value.getSizesanpham().getMasize());
			 sizeSanPham.setSize(value.getSizesanpham().getSize());
			 
			 chiTietSanPham.setSizesanpham(sizeSanPham);
			 
			 chiTietSanPham.setSoluong(value.getSoluong());
			 chiTietSanPham.setNgaynhap(value.getNgaynhap());
			 
			 
			 chiTietSanPhams.add(chiTietSanPham);
			 
			
		}
		 
		 json_SanPham.setChitietsanpham(chiTietSanPhams);
		 
		 json_SanPham.setDanhmucsanpham(danhMucSanPham);
		
		return json_SanPham;
	}
	
	@PostMapping(path = "LayDanhSachHoaDonTheoMa",produces = "application/json; charset=utf-8")
	@ResponseBody
	public Json_HoaDon LayDanhSachHoaDonTheoMa(@RequestParam int mahoadon) {
		Json_HoaDon json_HoaDon= new Json_HoaDon();
		
		
		HoaDon hoaDons=hoaDonService.layChiTietHoaDon(mahoadon);
		json_HoaDon.setMahoadon(hoaDons.getMahoadon());
		json_HoaDon.setTenkhachhang(hoaDons.getTenkhachhang());
		json_HoaDon.setSodt(hoaDons.getSodt());
		json_HoaDon.setDiachigiaohang(hoaDons.getDiachigiaohang());
		json_HoaDon.setTinhtrang(hoaDons.getTinhtrang());
		json_HoaDon.setNgaylap(hoaDons.getNgaylap());
		json_HoaDon.setHinhthucgiaohang(hoaDons.getHinhthucgiaohang());
		json_HoaDon.setGhichu(hoaDons.getGhichu());
		
		Set<ChiTietHoaDon> chiTietHoaDons=new HashSet<ChiTietHoaDon>();
		
		
		for(ChiTietHoaDon value: hoaDons.getDanhsachchitiethoadon()) {
			
			
			
			
			
			ChiTietHoaDon chiTietHoaDon= new ChiTietHoaDon();
			
			
			ChiTietHoaDonId chiTietHoaDonId = new ChiTietHoaDonId();
			chiTietHoaDonId.setMahoadon(value.getChiTietHoaDonId().getMahoadon());
			chiTietHoaDonId.setMachitietsanpham(value.getChiTietHoaDonId().getMachitietsanpham());
			
			
			
			
			
			
			
			
			
			
			chiTietHoaDon.setChiTietHoaDonId(chiTietHoaDonId);
			
			
			
			chiTietHoaDon.setGiatien(value.getGiatien());
			chiTietHoaDon.setSoluong(value.getSoluong());
			
			
			
			
			chiTietHoaDons.add(chiTietHoaDon);
		}
		
		
		json_HoaDon.setDanhsachchitiethoadon(chiTietHoaDons);
		
		
		return json_HoaDon;
		
		
		
		
	}
	
	

	
	

}
