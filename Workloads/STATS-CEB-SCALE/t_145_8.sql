SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= -19
AND p.CommentCount <= 33
AND u.DownVotes >= 36
AND u.UpVotes >= 165
AND c.CreationDate >= 527
AND p.CreationDate >= 1135
AND p.CreationDate <= 1183
AND pl.CreationDate <= 1273
AND ph.CreationDate >= 491

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId;