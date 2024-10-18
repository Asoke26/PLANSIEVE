SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= 30
AND p.CommentCount <= 25
AND u.DownVotes >= 35
AND u.UpVotes >= 47
AND c.CreationDate >= 1187
AND p.CreationDate >= 608
AND p.CreationDate <= 980
AND pl.CreationDate <= 1223
AND ph.CreationDate >= 68

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId;