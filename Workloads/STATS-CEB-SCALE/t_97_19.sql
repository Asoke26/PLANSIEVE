SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score <= 37
AND p.AnswerCount >= 0.0
AND u.UpVotes >= 14
AND v.CreationDate >= 917
AND u.CreationDate >= 458
AND u.CreationDate <= 1035

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;