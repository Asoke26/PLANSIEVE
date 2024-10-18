SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE c.Score = 1
AND p.PostTypeId = 1
AND p.FavoriteCount >= 12.0
AND p.FavoriteCount <= 28.0
AND ph.PostHistoryTypeId = 2
AND u.DownVotes <= 82
AND u.UpVotes >= 215
AND c.CreationDate >= 242
AND c.CreationDate <= 999
AND u.CreationDate >= 258

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;