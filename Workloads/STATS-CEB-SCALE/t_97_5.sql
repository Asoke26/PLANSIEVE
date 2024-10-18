SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score <= 40
AND p.AnswerCount >= 4.0
AND u.UpVotes >= 4
AND v.CreationDate >= 433
AND u.CreationDate >= 557
AND u.CreationDate <= 1065

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;