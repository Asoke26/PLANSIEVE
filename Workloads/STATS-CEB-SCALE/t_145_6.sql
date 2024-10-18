SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= 24
AND p.CommentCount <= 4
AND u.DownVotes >= 6
AND u.UpVotes >= 27
AND c.CreationDate >= 596
AND p.CreationDate >= 533
AND p.CreationDate <= 921
AND pl.CreationDate <= 787
AND ph.CreationDate >= 102

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId;