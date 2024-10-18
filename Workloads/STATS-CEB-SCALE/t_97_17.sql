SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score <= 105
AND p.AnswerCount >= 4.0
AND u.UpVotes >= 183
AND v.CreationDate >= 327
AND u.CreationDate >= 196
AND u.CreationDate <= 430

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;