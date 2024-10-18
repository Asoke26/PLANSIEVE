SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 8
AND p.Score >= 4
AND p.Score <= 27
AND p.CommentCount <= 26
AND u.DownVotes >= 8
AND c.CreationDate <= 870
AND p.CreationDate <= 766
AND v.CreationDate <= 1307

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;