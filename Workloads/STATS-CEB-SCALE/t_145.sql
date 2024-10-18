SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score>=-2
AND p.CommentCount<=18
AND u.DownVotes>=0
AND u.UpVotes>=0
AND c.CreationDate>=34
AND p.CreationDate>=29
AND p.CreationDate<=1542
AND pl.CreationDate<=1505
AND ph.CreationDate>=158

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId;