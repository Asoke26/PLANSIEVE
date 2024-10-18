SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score=0
AND p.Score>=0
AND p.Score<=19
AND p.CommentCount<=10
AND u.DownVotes>=0
AND c.CreationDate<=1541
AND p.CreationDate<=1528
AND v.CreationDate<=1543

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;