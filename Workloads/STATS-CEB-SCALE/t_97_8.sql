SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score <= 129
AND p.AnswerCount >= 1.0
AND u.UpVotes >= 113
AND v.CreationDate >= 1543
AND u.CreationDate >= 707
AND u.CreationDate <= 1210

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;