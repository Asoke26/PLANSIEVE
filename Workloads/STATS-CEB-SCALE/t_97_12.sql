SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score <= 184
AND p.AnswerCount >= 15.0
AND u.UpVotes >= 22
AND v.CreationDate >= 194
AND u.CreationDate >= 87
AND u.CreationDate <= 1344

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;