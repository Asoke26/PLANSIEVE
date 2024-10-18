SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score <= 36
AND p.AnswerCount >= 10.0
AND u.UpVotes >= 463
AND v.CreationDate >= 513
AND u.CreationDate >= 79
AND u.CreationDate <= 1254

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;