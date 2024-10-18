SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score <= 37
AND p.AnswerCount >= 13.0
AND u.UpVotes >= 28
AND v.CreationDate >= 748
AND u.CreationDate >= 46
AND u.CreationDate <= 1324

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;