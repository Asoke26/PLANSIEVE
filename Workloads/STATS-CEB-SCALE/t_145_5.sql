SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= 28
AND p.CommentCount <= 33
AND u.DownVotes >= 18
AND u.UpVotes >= 550
AND c.CreationDate >= 624
AND p.CreationDate >= 344
AND p.CreationDate <= 607
AND pl.CreationDate <= 789
AND ph.CreationDate >= 396

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId;