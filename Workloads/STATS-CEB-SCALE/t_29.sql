SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score>=0
AND p.Score<=30
AND p.CommentCount=0
AND p.CreationDate>=35
AND p.CreationDate<=1535

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;