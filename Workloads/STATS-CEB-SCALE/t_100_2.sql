SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 3
AND p.Score >= 63
AND p.Score <= 156
AND p.CommentCount <= 3
AND u.DownVotes >= 4
AND c.CreationDate <= 1156
AND p.CreationDate <= 1444
AND v.CreationDate <= 382

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;