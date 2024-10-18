SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 3
AND p.Score >= 4
AND p.Score <= 40
AND p.CommentCount <= 16
AND u.DownVotes >= 41
AND c.CreationDate <= 1382
AND p.CreationDate <= 312
AND v.CreationDate <= 1129

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;