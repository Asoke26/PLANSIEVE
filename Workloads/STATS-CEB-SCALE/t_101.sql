SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.AnswerCount>=0
AND p.AnswerCount<=7
AND p.CreationDate<=1543
AND b.Date<=1542

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND p.Id = v.PostId;