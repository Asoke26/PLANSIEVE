SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 20
AND p.Score >= 27
AND p.Score <= 115
AND p.CommentCount <= 35
AND u.DownVotes >= 5
AND c.CreationDate <= 749
AND p.CreationDate <= 859
AND v.CreationDate <= 886

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;