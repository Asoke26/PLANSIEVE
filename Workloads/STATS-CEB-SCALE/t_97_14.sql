SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score <= 124
AND p.AnswerCount >= 1.0
AND u.UpVotes >= 195
AND v.CreationDate >= 698
AND u.CreationDate >= 504
AND u.CreationDate <= 1166

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;