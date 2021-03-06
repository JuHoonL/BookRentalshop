package com.biz.bookrentalshop.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.UpdateProvider;

import com.biz.bookrentalshop.model.BookVO;

public interface BookDao {
	
	@Select(" SELECT * FROM tbl_book ")
	public List<BookVO> selectAll();
	
	@Select(" SELECT * FROM tbl_book WHERE book_seq = #{book_seq,jdbcType=VARCHAR} ")
	public BookVO findByBookSeq(long book_seq);
	
	@Select(" SELECT * FROM tbl_book WHERE book_isbn = #{book_isbn,jdbcType=VARCHAR} ")
	public BookVO findByBookIsbn(String book_isbn);
	
	@InsertProvider(type=BookSQL.class, method="book_insert_sql")
	public int insert(BookVO bookVO);
	
	@UpdateProvider(type=BookSQL.class, method="book_update_sql")
	public int update(BookVO bookVO);
	
	@Delete(" DELETE FROM tbl_book WHERE book_seq = #{book_seq} ")
	public int delete(long book_seq);
	
	@Select(" SELECT * FROM tbl_book WHERE book_title LIKE '%' || #{s_string} || '%' ")
	public List<BookVO> getSearchList(String s_string);
	
	@Select(" SELECT * FROM tbl_book WHERE book_isbn = #{book_isbn,jdbcType=VARCHAR} ")
	public List<BookVO> getSearchByIsbn(String book_isbn);
	
	@Select(" SELECT * FROM tbl_book WHERE book_isbn = #{book_isbn,jdbcType=VARCHAR} ")
	public BookVO getSearchIsbn(Long book_isbn);
}
