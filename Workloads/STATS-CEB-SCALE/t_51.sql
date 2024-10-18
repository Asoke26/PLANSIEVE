SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
badges b,
users u
WHERE p.PostTypeId=1
AND p.Score<=35
AND p.AnswerCount=1
AND p.CommentCount<=17
AND p.FavoriteCount>=0
AND u.Views<=233
AND u.DownVotes<=2
AND b.Date>=35
AND b.Date<=1537
AND u.CreationDate>=86
AND u.CreationDate<=1524

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;