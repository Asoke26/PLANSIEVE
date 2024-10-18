SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score <= 192
AND p.AnswerCount >= 7.0
AND u.UpVotes >= 347
AND v.CreationDate >= 1325
AND u.CreationDate >= 326
AND u.CreationDate <= 1151

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;