SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score <= 18
AND p.AnswerCount >= 0.0
AND u.UpVotes >= 20
AND v.CreationDate >= 156
AND u.CreationDate >= 642
AND u.CreationDate <= 659

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;