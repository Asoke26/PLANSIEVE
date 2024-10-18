SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.Score = 47
AND p.FavoriteCount <= 80.0
AND u.Reputation >= 1102
AND u.DownVotes >= 1
AND c.CreationDate <= 1342
AND pl.CreationDate >= 729
AND pl.CreationDate <= 967
AND ph.CreationDate >= 45
AND ph.CreationDate <= 909
AND v.CreationDate >= 1208

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;