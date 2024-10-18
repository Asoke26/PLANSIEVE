SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 10
AND p.Score >= -19
AND p.Score <= 184
AND p.CommentCount <= 21
AND u.DownVotes >= 88
AND c.CreationDate <= 1463
AND p.CreationDate <= 519
AND v.CreationDate <= 774

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;