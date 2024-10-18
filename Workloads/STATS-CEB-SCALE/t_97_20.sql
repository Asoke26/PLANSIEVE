SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score <= 27
AND p.AnswerCount >= 1.0
AND u.UpVotes >= 37
AND v.CreationDate >= 1013
AND u.CreationDate >= 971
AND u.CreationDate <= 1151

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;