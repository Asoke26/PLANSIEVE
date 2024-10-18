SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score=0
AND p.Score>=0
AND p.Score<=15
AND p.ViewCount>=0
AND p.ViewCount<=3002
AND p.AnswerCount<=3
AND p.CommentCount<=10
AND u.DownVotes<=0
AND u.UpVotes>=0
AND u.CreationDate>=62
AND u.CreationDate<=1533

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;