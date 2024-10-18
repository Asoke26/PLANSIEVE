SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score <= 87
AND p.AnswerCount >= 3.0
AND u.UpVotes >= 34
AND v.CreationDate >= 885
AND u.CreationDate >= 832
AND u.CreationDate <= 1253

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;