SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 2
AND p.Score >= -6
AND p.Score <= 61
AND p.CommentCount <= 35
AND u.DownVotes >= 163
AND c.CreationDate <= 1161
AND p.CreationDate <= 989
AND v.CreationDate <= 459

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;