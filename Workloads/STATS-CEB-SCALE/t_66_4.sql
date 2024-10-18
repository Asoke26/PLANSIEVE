SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE c.Score = 0
AND p.PostTypeId = 1
AND p.Score = 4
AND p.ViewCount <= 11269.0
AND ph.PostHistoryTypeId = 2
AND u.Reputation <= 451
AND u.Views >= 318
AND u.Views <= 1055
AND u.DownVotes >= 0
AND c.CreationDate >= 497
AND c.CreationDate <= 1522
AND pl.CreationDate >= 586

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;