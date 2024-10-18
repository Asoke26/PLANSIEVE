SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score <= 35
AND p.AnswerCount >= 7.0
AND u.UpVotes >= 191
AND v.CreationDate >= 1048
AND u.CreationDate >= 265
AND u.CreationDate <= 1049

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;