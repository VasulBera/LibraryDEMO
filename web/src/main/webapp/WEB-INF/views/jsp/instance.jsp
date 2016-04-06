<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Instance</title>
<link rel="stylesheet" href="resources/css/admin.css" />
</head>
<body>
	<div class="heder">
		<img src="img/logo.jpg" alt="logo" class="logo-img">


	</div>
	<nav>
		<ul>
			<li><a href="#">Пошук</a></li>
			<li><a href="#">Читачі</a></li>
			<li><a href="#">Боржники</a></li>
			<li><a href="#">Статистика</a>
				<ul>
					<li><a href="#">Книги</a></li>
					<li><a href="#">Користувачі</a></li>
				</ul></li>
			<li><a href="#">Log out</a></li>
		</ul>
	</nav>


	<div class="add-write-out">
		<div class="add">
			<p class="mini-heder">Пошук книги</p>
			<form action="allInstance" method="post">
			<div class="pole-add">
				<p>Назва</p>
				<input type="text" name="name" class="input-add">
				<p>Автор</p>
				<input type="text" class="input-add">
				<p>Жанр</p>
				<input type="text" class="input-add">
				<p>Співавтори</p>
				<input type="text" class="input-add">
				<p>Видавництво</p>
				<input type="text" class="input-add">
				<p>Рік видання</p>
				<input type="text" class="input-add">
			</div>
			<input type="submit" value="allInstance" class="input-bottom2">
			</form>
		</div>
		<div class="write-out">
			<p class="mini-heder">Екземпляри</p>
			<div class="pole-add">
				
				<c:forEach items="${allInstance}" var="item"><br>
   					Реєстраційний номер книги: ${item.id}<br>
   					Чи доступна вона: ${item.book.name}<br>
   					  <%--  ${item.book.author.name}<br>
   					   ${item.book.author.surname}<br>
   					   ${item.book.publication.name}<br> --%>
   					   
   					Кількість сторінок в книжці:  ${item.book.amountOfPage}<br>
   					Рік видання:   ${item.book.year}<br>
				</c:forEach>
				<p></p>
				
			</div>
		</div>


	</div>

</body>
</html>