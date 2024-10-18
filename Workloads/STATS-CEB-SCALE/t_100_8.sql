SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 7
AND p.Score >= -6
AND p.Score <= 105
AND p.CommentCount <= 7
AND u.DownVotes >= 103
AND c.CreationDate <= 373
AND p.CreationDate <= 129
AND v.CreationDate <= 575

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;