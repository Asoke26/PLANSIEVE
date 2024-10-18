SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE c.Score = 1
AND p.PostTypeId = 1
AND p.FavoriteCount >= 23.0
AND p.FavoriteCount <= 135.0
AND ph.PostHistoryTypeId = 9
AND u.DownVotes <= 36
AND u.UpVotes >= 355
AND c.CreationDate >= 164
AND c.CreationDate <= 1522
AND u.CreationDate >= 433

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;