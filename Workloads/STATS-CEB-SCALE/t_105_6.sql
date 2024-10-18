SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE ph.PostHistoryTypeId = 1
AND u.Reputation >= 197
AND u.Views >= 305
AND u.DownVotes >= 119
AND u.UpVotes >= 15
AND u.UpVotes <= 2923
AND c.CreationDate <= 1144
AND u.CreationDate >= 152
AND u.CreationDate <= 1288

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;