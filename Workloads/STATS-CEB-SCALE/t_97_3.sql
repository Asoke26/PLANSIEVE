SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score <= 88
AND p.AnswerCount >= 4.0
AND u.UpVotes >= 2496
AND v.CreationDate >= 351
AND u.CreationDate >= 822
AND u.CreationDate <= 1119

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;