SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.Score = 5
AND p.FavoriteCount <= 17.0
AND u.Reputation >= 511
AND u.DownVotes >= 9
AND c.CreationDate <= 1435
AND pl.CreationDate >= 648
AND pl.CreationDate <= 758
AND ph.CreationDate >= 699
AND ph.CreationDate <= 982
AND v.CreationDate >= 105

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;