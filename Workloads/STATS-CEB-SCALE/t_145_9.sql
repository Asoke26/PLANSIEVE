SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= 7
AND p.CommentCount <= 29
AND u.DownVotes >= 47
AND u.UpVotes >= 69
AND c.CreationDate >= 800
AND p.CreationDate >= 360
AND p.CreationDate <= 1290
AND pl.CreationDate <= 1238
AND ph.CreationDate >= 350

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId;