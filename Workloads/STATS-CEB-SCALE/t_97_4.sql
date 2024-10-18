SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score <= 19
AND p.AnswerCount >= 0.0
AND u.UpVotes >= 505
AND v.CreationDate >= 1305
AND u.CreationDate >= 81
AND u.CreationDate <= 783

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;