SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score <= 110
AND p.AnswerCount >= 3.0
AND u.UpVotes >= 237
AND v.CreationDate >= 1094
AND u.CreationDate >= 576
AND u.CreationDate <= 1432

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;