SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= -1
AND p.CommentCount <= 2
AND u.DownVotes >= 18
AND u.UpVotes >= 343
AND c.CreationDate >= 181
AND p.CreationDate >= 142
AND p.CreationDate <= 1498
AND pl.CreationDate <= 1109
AND ph.CreationDate >= 708

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId;