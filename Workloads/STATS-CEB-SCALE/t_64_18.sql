SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE c.Score = 1
AND p.PostTypeId = 1
AND p.FavoriteCount >= 2.0
AND p.FavoriteCount <= 21.0
AND ph.PostHistoryTypeId = 6
AND u.DownVotes <= 779
AND u.UpVotes >= 518
AND c.CreationDate >= 53
AND c.CreationDate <= 759
AND u.CreationDate >= 302

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;