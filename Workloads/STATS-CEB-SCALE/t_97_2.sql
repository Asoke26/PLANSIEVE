SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score <= 66
AND p.AnswerCount >= 2.0
AND u.UpVotes >= 283
AND v.CreationDate >= 774
AND u.CreationDate >= 383
AND u.CreationDate <= 658

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;