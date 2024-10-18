SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 16
AND p.Score >= 28
AND u.Reputation >= 155
AND u.UpVotes >= 33
AND u.UpVotes <= 187

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;