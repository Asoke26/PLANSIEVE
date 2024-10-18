SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.Score = 5
AND p.FavoriteCount <= 7.0
AND u.Reputation >= 1725
AND u.DownVotes >= 7
AND c.CreationDate <= 570
AND pl.CreationDate >= 119
AND pl.CreationDate <= 1321
AND ph.CreationDate >= 1082
AND ph.CreationDate <= 1150
AND v.CreationDate >= 812

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;