SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score <= 56
AND p.AnswerCount >= 1.0
AND u.UpVotes >= 30
AND v.CreationDate >= 652
AND u.CreationDate >= 1044
AND u.CreationDate <= 1255

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;