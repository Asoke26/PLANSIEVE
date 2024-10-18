SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score <= 74
AND p.AnswerCount >= 4.0
AND u.UpVotes >= 475
AND v.CreationDate >= 1260
AND u.CreationDate >= 609
AND u.CreationDate <= 801

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;