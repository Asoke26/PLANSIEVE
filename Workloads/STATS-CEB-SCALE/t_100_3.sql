SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 2
AND p.Score >= 43
AND p.Score <= 50
AND p.CommentCount <= 23
AND u.DownVotes >= 3
AND c.CreationDate <= 65
AND p.CreationDate <= 678
AND v.CreationDate <= 1523

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;