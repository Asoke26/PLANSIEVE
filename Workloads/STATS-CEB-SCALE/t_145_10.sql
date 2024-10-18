SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= 58
AND p.CommentCount <= 26
AND u.DownVotes >= 41
AND u.UpVotes >= 1
AND c.CreationDate >= 543
AND p.CreationDate >= 39
AND p.CreationDate <= 352
AND pl.CreationDate <= 1404
AND ph.CreationDate >= 201

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId;