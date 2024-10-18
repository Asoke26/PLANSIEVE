SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score <= 32
AND p.AnswerCount >= 7.0
AND u.UpVotes >= 32
AND v.CreationDate >= 507
AND u.CreationDate >= 310
AND u.CreationDate <= 614

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;