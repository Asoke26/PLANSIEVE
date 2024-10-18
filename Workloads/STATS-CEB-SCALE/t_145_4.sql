SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= -13
AND p.CommentCount <= 31
AND u.DownVotes >= 42
AND u.UpVotes >= 223
AND c.CreationDate >= 501
AND p.CreationDate >= 673
AND p.CreationDate <= 782
AND pl.CreationDate <= 787
AND ph.CreationDate >= 583

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId;