SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= -13
AND p.CommentCount <= 24
AND u.DownVotes >= 351
AND u.UpVotes >= 109
AND c.CreationDate >= 332
AND p.CreationDate >= 703
AND p.CreationDate <= 1359
AND pl.CreationDate <= 1406
AND ph.CreationDate >= 159

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId;