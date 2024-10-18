SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 0
AND p.Score >= 10
AND p.Score <= 51
AND p.CommentCount <= 24
AND u.DownVotes >= 44
AND c.CreationDate <= 988
AND p.CreationDate <= 1083
AND v.CreationDate <= 1432

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;