SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= 12
AND p.CommentCount <= 9
AND u.DownVotes >= 139
AND u.UpVotes >= 161
AND c.CreationDate >= 995
AND p.CreationDate >= 221
AND p.CreationDate <= 1360
AND pl.CreationDate <= 1298
AND ph.CreationDate >= 1341

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId;