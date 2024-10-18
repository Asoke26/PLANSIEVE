SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= 18
AND p.CommentCount <= 31
AND u.DownVotes >= 48
AND u.UpVotes >= 449
AND c.CreationDate >= 34
AND p.CreationDate >= 543
AND p.CreationDate <= 1269
AND pl.CreationDate <= 1496
AND ph.CreationDate >= 859

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId;