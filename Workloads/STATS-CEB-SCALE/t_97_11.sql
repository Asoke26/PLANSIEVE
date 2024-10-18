SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score <= 79
AND p.AnswerCount >= 6.0
AND u.UpVotes >= 196
AND v.CreationDate >= 898
AND u.CreationDate >= 909
AND u.CreationDate <= 1393

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;